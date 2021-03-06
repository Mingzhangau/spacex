//
//  ViewController.swift
//  SpaceX
//
//  Created by Ming Zhang on 29/6/22.
//
import UIKit

extension UIView {

    func makeStateful() {

        let coverView = UIView(frame: .zero)
        coverView.translatesAutoresizingMaskIntoConstraints = false
        coverView.tag = coverViewTag
        coverView.backgroundColor = UIColor.white
        addSubview(coverView)

        let progressIndicator = UIActivityIndicatorView(style: .medium)
        progressIndicator.hidesWhenStopped = true
        progressIndicator.translatesAutoresizingMaskIntoConstraints = false
        progressIndicator.tag = progressIndicatorTag
        coverView.addSubview(progressIndicator)

        let stateLabel = UILabel()
        stateLabel.tag = stateLabelTag
        stateLabel.translatesAutoresizingMaskIntoConstraints = false
        coverView.addSubview(stateLabel)


        NSLayoutConstraint.activate([
            progressIndicator.centerXAnchor.constraint(equalTo: coverView.centerXAnchor),
            progressIndicator.centerYAnchor.constraint(equalTo: coverView.centerYAnchor),

            stateLabel.centerXAnchor.constraint(equalTo: coverView.centerXAnchor),
            stateLabel.centerYAnchor.constraint(equalTo: coverView.centerYAnchor),

            coverView.leadingAnchor.constraint(equalTo: leadingAnchor),
            coverView.trailingAnchor.constraint(equalTo: trailingAnchor),
            coverView.topAnchor.constraint(equalTo: topAnchor),
            coverView.bottomAnchor.constraint(equalTo: bottomAnchor),
            coverView.widthAnchor.constraint(equalTo: widthAnchor),
            coverView.heightAnchor.constraint(equalTo: heightAnchor),
        ])
    }

    private var progressIndicatorTag: Int { 200 }

    private var stateLabelTag: Int { 100 }

    private var coverViewTag: Int { 300 }

    private var progressIndicator: UIActivityIndicatorView {
        return viewWithTag(progressIndicatorTag) as! UIActivityIndicatorView
    }

    private var stateView: UILabel {
        return viewWithTag(stateLabelTag) as! UILabel
    }

    private var coverView: UIView {
        return viewWithTag(coverViewTag)!
    }

    func showState(_ state: State<Content>) {
        switch state {
        case .loading:
            self.setIndicatorView(started: true)
            self.setStateViewWithText(nil)
            self.bringSubviewToFront(self.coverView)
        case .displaying(let content):
            self.showContent(content)
        }
    }

    private func setStateViewWithText(_ text: String?) {
        let stateLabel = stateView
        text.map { stateLabel.text = $0 }
        stateLabel.isHidden = text == nil
    }

    private func setIndicatorView(started: Bool) {
        let indicatorView = progressIndicator
        started ? indicatorView.startAnimating() : indicatorView.stopAnimating()
    }

    private func showContent(_ content: Content) {
        setIndicatorView(started: false)
        switch content {
        case .empty:
            setStateViewWithText("There's nothing to display ????")
            bringSubviewToFront(coverView)
        case .error:
            setStateViewWithText("There's an error ????")
            bringSubviewToFront(coverView)
        case .data:
            setStateViewWithText(nil)
            sendSubviewToBack(coverView)
        }
    }

    enum State<A> {
        case loading
        case displaying(A)

        var isLoading: Bool {
            guard case .loading = self else { return false }
            return true
        }
    }

    enum Content {
        case error
        case data
        case empty
    }
}
